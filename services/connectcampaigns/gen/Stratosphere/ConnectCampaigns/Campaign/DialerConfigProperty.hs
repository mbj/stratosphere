module Stratosphere.ConnectCampaigns.Campaign.DialerConfigProperty (
        module Exports, DialerConfigProperty(..), mkDialerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaigns.Campaign.PredictiveDialerConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaigns.Campaign.ProgressiveDialerConfigProperty as Exports
import Stratosphere.ResourceProperties
data DialerConfigProperty
  = DialerConfigProperty {predictiveDialerConfig :: (Prelude.Maybe PredictiveDialerConfigProperty),
                          progressiveDialerConfig :: (Prelude.Maybe ProgressiveDialerConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDialerConfigProperty :: DialerConfigProperty
mkDialerConfigProperty
  = DialerConfigProperty
      {predictiveDialerConfig = Prelude.Nothing,
       progressiveDialerConfig = Prelude.Nothing}
instance ToResourceProperties DialerConfigProperty where
  toResourceProperties DialerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaigns::Campaign.DialerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PredictiveDialerConfig"
                              Prelude.<$> predictiveDialerConfig,
                            (JSON..=) "ProgressiveDialerConfig"
                              Prelude.<$> progressiveDialerConfig])}
instance JSON.ToJSON DialerConfigProperty where
  toJSON DialerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PredictiveDialerConfig"
                 Prelude.<$> predictiveDialerConfig,
               (JSON..=) "ProgressiveDialerConfig"
                 Prelude.<$> progressiveDialerConfig]))
instance Property "PredictiveDialerConfig" DialerConfigProperty where
  type PropertyType "PredictiveDialerConfig" DialerConfigProperty = PredictiveDialerConfigProperty
  set newValue DialerConfigProperty {..}
    = DialerConfigProperty
        {predictiveDialerConfig = Prelude.pure newValue, ..}
instance Property "ProgressiveDialerConfig" DialerConfigProperty where
  type PropertyType "ProgressiveDialerConfig" DialerConfigProperty = ProgressiveDialerConfigProperty
  set newValue DialerConfigProperty {..}
    = DialerConfigProperty
        {progressiveDialerConfig = Prelude.pure newValue, ..}