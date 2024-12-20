use starknet::ContractAddress;
// *************************************************************************
//                              INTERFACE of TOKEN GIVER NFT
// *************************************************************************
#[starknet::interface]
pub trait ITokenGiverNft<TState> {
    fn mint_token_giver_nft(ref self: TState, address: ContractAddress) -> u256;
    fn get_last_minted_id(self: @TState) -> u256;
    fn get_user_token_id(self: @TState, user: ContractAddress) -> u256;
    fn get_token_mint_timestamp(self: @TState, token_id: u256) -> u64;
}
