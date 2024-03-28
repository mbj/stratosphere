module Stratosphere.S3.AccessGrant.GranteeProperty (
        GranteeProperty(..), mkGranteeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GranteeProperty
  = GranteeProperty {granteeIdentifier :: (Value Prelude.Text),
                     granteeType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGranteeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> GranteeProperty
mkGranteeProperty granteeIdentifier granteeType
  = GranteeProperty
      {granteeIdentifier = granteeIdentifier, granteeType = granteeType}
instance ToResourceProperties GranteeProperty where
  toResourceProperties GranteeProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::AccessGrant.Grantee",
         supportsTags = Prelude.False,
         properties = ["GranteeIdentifier" JSON..= granteeIdentifier,
                       "GranteeType" JSON..= granteeType]}
instance JSON.ToJSON GranteeProperty where
  toJSON GranteeProperty {..}
    = JSON.object
        ["GranteeIdentifier" JSON..= granteeIdentifier,
         "GranteeType" JSON..= granteeType]
instance Property "GranteeIdentifier" GranteeProperty where
  type PropertyType "GranteeIdentifier" GranteeProperty = Value Prelude.Text
  set newValue GranteeProperty {..}
    = GranteeProperty {granteeIdentifier = newValue, ..}
instance Property "GranteeType" GranteeProperty where
  type PropertyType "GranteeType" GranteeProperty = Value Prelude.Text
  set newValue GranteeProperty {..}
    = GranteeProperty {granteeType = newValue, ..}