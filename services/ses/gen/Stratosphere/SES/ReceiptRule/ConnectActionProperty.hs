module Stratosphere.SES.ReceiptRule.ConnectActionProperty (
        ConnectActionProperty(..), mkConnectActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectActionProperty
  = ConnectActionProperty {iAMRoleARN :: (Value Prelude.Text),
                           instanceARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ConnectActionProperty
mkConnectActionProperty iAMRoleARN instanceARN
  = ConnectActionProperty
      {iAMRoleARN = iAMRoleARN, instanceARN = instanceARN}
instance ToResourceProperties ConnectActionProperty where
  toResourceProperties ConnectActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptRule.ConnectAction",
         supportsTags = Prelude.False,
         properties = ["IAMRoleARN" JSON..= iAMRoleARN,
                       "InstanceARN" JSON..= instanceARN]}
instance JSON.ToJSON ConnectActionProperty where
  toJSON ConnectActionProperty {..}
    = JSON.object
        ["IAMRoleARN" JSON..= iAMRoleARN,
         "InstanceARN" JSON..= instanceARN]
instance Property "IAMRoleARN" ConnectActionProperty where
  type PropertyType "IAMRoleARN" ConnectActionProperty = Value Prelude.Text
  set newValue ConnectActionProperty {..}
    = ConnectActionProperty {iAMRoleARN = newValue, ..}
instance Property "InstanceARN" ConnectActionProperty where
  type PropertyType "InstanceARN" ConnectActionProperty = Value Prelude.Text
  set newValue ConnectActionProperty {..}
    = ConnectActionProperty {instanceARN = newValue, ..}