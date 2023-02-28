module Stratosphere.LakeFormation.PrincipalPermissions.DataLocationResourceProperty (
        DataLocationResourceProperty(..), mkDataLocationResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataLocationResourceProperty
  = DataLocationResourceProperty {catalogId :: (Value Prelude.Text),
                                  resourceArn :: (Value Prelude.Text)}
mkDataLocationResourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DataLocationResourceProperty
mkDataLocationResourceProperty catalogId resourceArn
  = DataLocationResourceProperty
      {catalogId = catalogId, resourceArn = resourceArn}
instance ToResourceProperties DataLocationResourceProperty where
  toResourceProperties DataLocationResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.DataLocationResource",
         supportsTags = Prelude.False,
         properties = ["CatalogId" JSON..= catalogId,
                       "ResourceArn" JSON..= resourceArn]}
instance JSON.ToJSON DataLocationResourceProperty where
  toJSON DataLocationResourceProperty {..}
    = JSON.object
        ["CatalogId" JSON..= catalogId, "ResourceArn" JSON..= resourceArn]
instance Property "CatalogId" DataLocationResourceProperty where
  type PropertyType "CatalogId" DataLocationResourceProperty = Value Prelude.Text
  set newValue DataLocationResourceProperty {..}
    = DataLocationResourceProperty {catalogId = newValue, ..}
instance Property "ResourceArn" DataLocationResourceProperty where
  type PropertyType "ResourceArn" DataLocationResourceProperty = Value Prelude.Text
  set newValue DataLocationResourceProperty {..}
    = DataLocationResourceProperty {resourceArn = newValue, ..}