module Stratosphere.SecurityHub.DelegatedAdmin (
        DelegatedAdmin(..), mkDelegatedAdmin
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DelegatedAdmin
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-delegatedadmin.html>
    DelegatedAdmin {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-delegatedadmin.html#cfn-securityhub-delegatedadmin-adminaccountid>
                    adminAccountId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDelegatedAdmin :: Value Prelude.Text -> DelegatedAdmin
mkDelegatedAdmin adminAccountId
  = DelegatedAdmin
      {haddock_workaround_ = (), adminAccountId = adminAccountId}
instance ToResourceProperties DelegatedAdmin where
  toResourceProperties DelegatedAdmin {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::DelegatedAdmin",
         supportsTags = Prelude.False,
         properties = ["AdminAccountId" JSON..= adminAccountId]}
instance JSON.ToJSON DelegatedAdmin where
  toJSON DelegatedAdmin {..}
    = JSON.object ["AdminAccountId" JSON..= adminAccountId]
instance Property "AdminAccountId" DelegatedAdmin where
  type PropertyType "AdminAccountId" DelegatedAdmin = Value Prelude.Text
  set newValue DelegatedAdmin {..}
    = DelegatedAdmin {adminAccountId = newValue, ..}