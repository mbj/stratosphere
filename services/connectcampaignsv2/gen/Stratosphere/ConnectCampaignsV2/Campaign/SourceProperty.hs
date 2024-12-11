module Stratosphere.ConnectCampaignsV2.Campaign.SourceProperty (
        SourceProperty(..), mkSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceProperty
  = SourceProperty {customerProfilesSegmentArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceProperty :: Value Prelude.Text -> SourceProperty
mkSourceProperty customerProfilesSegmentArn
  = SourceProperty
      {customerProfilesSegmentArn = customerProfilesSegmentArn}
instance ToResourceProperties SourceProperty where
  toResourceProperties SourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.Source",
         supportsTags = Prelude.False,
         properties = ["CustomerProfilesSegmentArn"
                         JSON..= customerProfilesSegmentArn]}
instance JSON.ToJSON SourceProperty where
  toJSON SourceProperty {..}
    = JSON.object
        ["CustomerProfilesSegmentArn" JSON..= customerProfilesSegmentArn]
instance Property "CustomerProfilesSegmentArn" SourceProperty where
  type PropertyType "CustomerProfilesSegmentArn" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {}
    = SourceProperty {customerProfilesSegmentArn = newValue, ..}