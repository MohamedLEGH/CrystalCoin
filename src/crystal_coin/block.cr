# src/crystal_coin/block.cr

require "./proof_of_work"


module CrystalCoin
  class Block
    include ProofOfWork
      
    JSON.mapping({
      transactions: Array(Transaction),
      index: Int32,
      timestamp: Time,
      previous_hash: String,
      nonce: Int32,
      current_hash: String
    })

    def initialize(index = 0, transactions = [] of Transaction, previous_hash = "hash")
      @transactions = transactions
      @index = index
      @timestamp = Time.now
      @previous_hash = previous_hash
      @nonce = proof_of_work
      @current_hash = calc_hash_with_nonce(@nonce)
    end

    def self.first(transactions = [] of Transaction)
      Block.new(transactions: transactions, previous_hash: "0")
    end

    def self.next(previous_block, transactions = [] of Transaction)
      Block.new(
        transactions: transactions,
        index: previous_block.index + 1,
        previous_hash: previous_block.current_hash
      )
    end
    
    def recalculate_hash
     @current_hash = calc_hash_with_nonce(@nonce)
    end    
  end
end

