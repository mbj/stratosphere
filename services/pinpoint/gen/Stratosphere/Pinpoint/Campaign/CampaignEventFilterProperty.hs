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
  = CampaignEventFilterProperty {dimensions :: (Prelude.Maybe EventDimensionsProperty),
                                 filterType :: (Prelude.Maybe (Value Prelude.Text))}
mkCampaignEventFilterProperty :: CampaignEventFilterProperty
mkCampaignEventFilterProperty
  = CampaignEventFilterProperty
      {dimensions = Prelude.Nothing, filterType = Prelude.Nothing}
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