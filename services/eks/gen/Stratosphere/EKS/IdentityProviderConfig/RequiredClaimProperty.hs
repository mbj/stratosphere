module Stratosphere.EKS.IdentityProviderConfig.RequiredClaimProperty (
        RequiredClaimProperty(..), mkRequiredClaimProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RequiredClaimProperty
  = RequiredClaimProperty {key :: (Value Prelude.Text),
                           value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRequiredClaimProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RequiredClaimProperty
mkRequiredClaimProperty key value
  = RequiredClaimProperty {key = key, value = value}
instance ToResourceProperties RequiredClaimProperty where
  toResourceProperties RequiredClaimProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::IdentityProviderConfig.RequiredClaim",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON RequiredClaimProperty where
  toJSON RequiredClaimProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" RequiredClaimProperty where
  type PropertyType "Key" RequiredClaimProperty = Value Prelude.Text
  set newValue RequiredClaimProperty {..}
    = RequiredClaimProperty {key = newValue, ..}
instance Property "Value" RequiredClaimProperty where
  type PropertyType "Value" RequiredClaimProperty = Value Prelude.Text
  set newValue RequiredClaimProperty {..}
    = RequiredClaimProperty {value = newValue, ..}