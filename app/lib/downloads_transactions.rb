class DownloadsTransactions
  def initialize(user)
    @user = user
  end

  def download
    return FineAnts.download(@user.bank.fine_ants_adapter, {
      :user => @user.user,
      :password => @user.password
    })
  end
end
