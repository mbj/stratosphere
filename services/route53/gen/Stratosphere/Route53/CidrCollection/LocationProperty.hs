module Stratosphere.Route53.CidrCollection.LocationProperty (
        LocationProperty(..), mkLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-cidrcollection-location.html>
    LocationProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-cidrcollection-location.html#cfn-route53-cidrcollection-location-cidrlist>
                      cidrList :: (ValueList Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-cidrcollection-location.html#cfn-route53-cidrcollection-location-locationname>
                      locationName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationProperty ::
  ValueList Prelude.Text -> Value Prelude.Text -> LocationProperty
mkLocationProperty cidrList locationName
  = LocationProperty
      {haddock_workaround_ = (), cidrList = cidrList,
       locationName = locationName}
instance ToResourceProperties LocationProperty where
  toResourceProperties LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::CidrCollection.Location",
         supportsTags = Prelude.False,
         properties = ["CidrList" JSON..= cidrList,
                       "LocationName" JSON..= locationName]}
instance JSON.ToJSON LocationProperty where
  toJSON LocationProperty {..}
    = JSON.object
        ["CidrList" JSON..= cidrList, "LocationName" JSON..= locationName]
instance Property "CidrList" LocationProperty where
  type PropertyType "CidrList" LocationProperty = ValueList Prelude.Text
  set newValue LocationProperty {..}
    = LocationProperty {cidrList = newValue, ..}
instance Property "LocationName" LocationProperty where
  type PropertyType "LocationName" LocationProperty = Value Prelude.Text
  set newValue LocationProperty {..}
    = LocationProperty {locationName = newValue, ..}