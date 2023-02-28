module Stratosphere.Route53.RecordSet.CidrRoutingConfigProperty (
        CidrRoutingConfigProperty(..), mkCidrRoutingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CidrRoutingConfigProperty
  = CidrRoutingConfigProperty {collectionId :: (Value Prelude.Text),
                               locationName :: (Value Prelude.Text)}
mkCidrRoutingConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CidrRoutingConfigProperty
mkCidrRoutingConfigProperty collectionId locationName
  = CidrRoutingConfigProperty
      {collectionId = collectionId, locationName = locationName}
instance ToResourceProperties CidrRoutingConfigProperty where
  toResourceProperties CidrRoutingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::RecordSet.CidrRoutingConfig",
         supportsTags = Prelude.False,
         properties = ["CollectionId" JSON..= collectionId,
                       "LocationName" JSON..= locationName]}
instance JSON.ToJSON CidrRoutingConfigProperty where
  toJSON CidrRoutingConfigProperty {..}
    = JSON.object
        ["CollectionId" JSON..= collectionId,
         "LocationName" JSON..= locationName]
instance Property "CollectionId" CidrRoutingConfigProperty where
  type PropertyType "CollectionId" CidrRoutingConfigProperty = Value Prelude.Text
  set newValue CidrRoutingConfigProperty {..}
    = CidrRoutingConfigProperty {collectionId = newValue, ..}
instance Property "LocationName" CidrRoutingConfigProperty where
  type PropertyType "LocationName" CidrRoutingConfigProperty = Value Prelude.Text
  set newValue CidrRoutingConfigProperty {..}
    = CidrRoutingConfigProperty {locationName = newValue, ..}