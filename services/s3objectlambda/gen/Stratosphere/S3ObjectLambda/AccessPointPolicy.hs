module Stratosphere.S3ObjectLambda.AccessPointPolicy (
        AccessPointPolicy(..), mkAccessPointPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessPointPolicy
  = AccessPointPolicy {objectLambdaAccessPoint :: (Value Prelude.Text),
                       policyDocument :: JSON.Object}
mkAccessPointPolicy ::
  Value Prelude.Text -> JSON.Object -> AccessPointPolicy
mkAccessPointPolicy objectLambdaAccessPoint policyDocument
  = AccessPointPolicy
      {objectLambdaAccessPoint = objectLambdaAccessPoint,
       policyDocument = policyDocument}
instance ToResourceProperties AccessPointPolicy where
  toResourceProperties AccessPointPolicy {..}
    = ResourceProperties
        {awsType = "AWS::S3ObjectLambda::AccessPointPolicy",
         properties = ["ObjectLambdaAccessPoint"
                         JSON..= objectLambdaAccessPoint,
                       "PolicyDocument" JSON..= policyDocument]}
instance JSON.ToJSON AccessPointPolicy where
  toJSON AccessPointPolicy {..}
    = JSON.object
        ["ObjectLambdaAccessPoint" JSON..= objectLambdaAccessPoint,
         "PolicyDocument" JSON..= policyDocument]
instance Property "ObjectLambdaAccessPoint" AccessPointPolicy where
  type PropertyType "ObjectLambdaAccessPoint" AccessPointPolicy = Value Prelude.Text
  set newValue AccessPointPolicy {..}
    = AccessPointPolicy {objectLambdaAccessPoint = newValue, ..}
instance Property "PolicyDocument" AccessPointPolicy where
  type PropertyType "PolicyDocument" AccessPointPolicy = JSON.Object
  set newValue AccessPointPolicy {..}
    = AccessPointPolicy {policyDocument = newValue, ..}