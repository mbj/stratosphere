module Stratosphere.ApiGateway.UsagePlanKey (
        UsagePlanKey(..), mkUsagePlanKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UsagePlanKey
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html>
    UsagePlanKey {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html#cfn-apigateway-usageplankey-keyid>
                  keyId :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html#cfn-apigateway-usageplankey-keytype>
                  keyType :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html#cfn-apigateway-usageplankey-usageplanid>
                  usagePlanId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUsagePlanKey ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> UsagePlanKey
mkUsagePlanKey keyId keyType usagePlanId
  = UsagePlanKey
      {haddock_workaround_ = (), keyId = keyId, keyType = keyType,
       usagePlanId = usagePlanId}
instance ToResourceProperties UsagePlanKey where
  toResourceProperties UsagePlanKey {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::UsagePlanKey",
         supportsTags = Prelude.False,
         properties = ["KeyId" JSON..= keyId, "KeyType" JSON..= keyType,
                       "UsagePlanId" JSON..= usagePlanId]}
instance JSON.ToJSON UsagePlanKey where
  toJSON UsagePlanKey {..}
    = JSON.object
        ["KeyId" JSON..= keyId, "KeyType" JSON..= keyType,
         "UsagePlanId" JSON..= usagePlanId]
instance Property "KeyId" UsagePlanKey where
  type PropertyType "KeyId" UsagePlanKey = Value Prelude.Text
  set newValue UsagePlanKey {..}
    = UsagePlanKey {keyId = newValue, ..}
instance Property "KeyType" UsagePlanKey where
  type PropertyType "KeyType" UsagePlanKey = Value Prelude.Text
  set newValue UsagePlanKey {..}
    = UsagePlanKey {keyType = newValue, ..}
instance Property "UsagePlanId" UsagePlanKey where
  type PropertyType "UsagePlanId" UsagePlanKey = Value Prelude.Text
  set newValue UsagePlanKey {..}
    = UsagePlanKey {usagePlanId = newValue, ..}