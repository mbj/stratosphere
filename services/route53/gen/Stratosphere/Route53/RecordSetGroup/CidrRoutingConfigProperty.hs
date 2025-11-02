module Stratosphere.Route53.RecordSetGroup.CidrRoutingConfigProperty (
        CidrRoutingConfigProperty(..), mkCidrRoutingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CidrRoutingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-cidrroutingconfig.html>
    CidrRoutingConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-cidrroutingconfig.html#cfn-route53-cidrroutingconfig-collectionid>
                               collectionId :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-cidrroutingconfig.html#cfn-route53-cidrroutingconfig-locationname>
                               locationName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCidrRoutingConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CidrRoutingConfigProperty
mkCidrRoutingConfigProperty collectionId locationName
  = CidrRoutingConfigProperty
      {haddock_workaround_ = (), collectionId = collectionId,
       locationName = locationName}
instance ToResourceProperties CidrRoutingConfigProperty where
  toResourceProperties CidrRoutingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::RecordSetGroup.CidrRoutingConfig",
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