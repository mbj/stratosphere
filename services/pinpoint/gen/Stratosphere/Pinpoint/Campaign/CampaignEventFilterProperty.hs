module Stratosphere.Pinpoint.Campaign.CampaignEventFilterProperty (
        module Exports, CampaignEventFilterProperty(..),
        mkCampaignEventFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.EventDimensionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CampaignEventFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaigneventfilter.html>
    CampaignEventFilterProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaigneventfilter.html#cfn-pinpoint-campaign-campaigneventfilter-dimensions>
                                 dimensions :: (Prelude.Maybe EventDimensionsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaigneventfilter.html#cfn-pinpoint-campaign-campaigneventfilter-filtertype>
                                 filterType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCampaignEventFilterProperty :: CampaignEventFilterProperty
mkCampaignEventFilterProperty
  = CampaignEventFilterProperty
      {haddock_workaround_ = (), dimensions = Prelude.Nothing,
       filterType = Prelude.Nothing}
instance ToResourceProperties CampaignEventFilterProperty where
  toResourceProperties CampaignEventFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.CampaignEventFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "FilterType" Prelude.<$> filterType])}
instance JSON.ToJSON CampaignEventFilterProperty where
  toJSON CampaignEventFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "FilterType" Prelude.<$> filterType]))
instance Property "Dimensions" CampaignEventFilterProperty where
  type PropertyType "Dimensions" CampaignEventFilterProperty = EventDimensionsProperty
  set newValue CampaignEventFilterProperty {..}
    = CampaignEventFilterProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "FilterType" CampaignEventFilterProperty where
  type PropertyType "FilterType" CampaignEventFilterProperty = Value Prelude.Text
  set newValue CampaignEventFilterProperty {..}
    = CampaignEventFilterProperty
        {filterType = Prelude.pure newValue, ..}