module Stratosphere.DataZone.ProjectProfile.RegionProperty (
        RegionProperty(..), mkRegionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-region.html>
    RegionProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-region.html#cfn-datazone-projectprofile-region-regionname>
                    regionName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegionProperty :: Value Prelude.Text -> RegionProperty
mkRegionProperty regionName
  = RegionProperty
      {haddock_workaround_ = (), regionName = regionName}
instance ToResourceProperties RegionProperty where
  toResourceProperties RegionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::ProjectProfile.Region",
         supportsTags = Prelude.False,
         properties = ["RegionName" JSON..= regionName]}
instance JSON.ToJSON RegionProperty where
  toJSON RegionProperty {..}
    = JSON.object ["RegionName" JSON..= regionName]
instance Property "RegionName" RegionProperty where
  type PropertyType "RegionName" RegionProperty = Value Prelude.Text
  set newValue RegionProperty {..}
    = RegionProperty {regionName = newValue, ..}