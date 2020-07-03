class CreateSupportPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :support_plans do |t|
      t.string :supportWorkerName
      t.string :supportWorkerPhone
      t.string :whatsImportant
      t.string :goals
      t.string :challenges
      t.string :howAmIBestSupported
      t.string :expectedOfMe
      t.string :expectedOfLinkWorker
      t.string :longTermConditions
      t.string :support
      t.string :whatTimeMightItTake
      t.date :reviewDate
      t.timestamps
    end
  end
end
