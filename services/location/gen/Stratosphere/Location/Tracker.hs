module Stratosphere.Location.Tracker (
        Tracker(..), mkTracker
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Tracker
  = Tracker {description :: (Prelude.Maybe (Value Prelude.Text)),
             kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
             positionFiltering :: (Prelude.Maybe (Value Prelude.Text)),
             pricingPlan :: (Prelude.Maybe (Value Prelude.Text)),
             pricingPlanDataSource :: (Prelude.Maybe (Value Prelude.Text)),
             trackerName :: (Value Prelude.Text)}
mkTracker :: Value Prelude.Text -> Tracker
mkTracker trackerName
  = Tracker
      {trackerName = trackerName, description = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, positionFiltering = Prelude.Nothing,
       pricingPlan = Prelude.Nothing,
       pricingPlanDataSource = Prelude.Nothing}
instance ToResourceProperties Tracker where
  toResourceProperties Tracker {..}
    = ResourceProperties
        {awsType = "AWS::Location::Tracker", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TrackerName" JSON..= trackerName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "PositionFiltering" Prelude.<$> positionFiltering,
                               (JSON..=) "PricingPlan" Prelude.<$> pricingPlan,
                               (JSON..=) "PricingPlanDataSource"
                                 Prelude.<$> pricingPlanDataSource]))}
instance JSON.ToJSON Tracker where
  toJSON Tracker {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TrackerName" JSON..= trackerName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "PositionFiltering" Prelude.<$> positionFiltering,
                  (JSON..=) "PricingPlan" Prelude.<$> pricingPlan,
                  (JSON..=) "PricingPlanDataSource"
                    Prelude.<$> pricingPlanDataSource])))
instance Property "Description" Tracker where
  type PropertyType "Description" Tracker = Value Prelude.Text
  set newValue Tracker {..}
    = Tracker {description = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Tracker where
  type PropertyType "KmsKeyId" Tracker = Value Prelude.Text
  set newValue Tracker {..}
    = Tracker {kmsKeyId = Prelude.pure newValue, ..}
instance Property "PositionFiltering" Tracker where
  type PropertyType "PositionFiltering" Tracker = Value Prelude.Text
  set newValue Tracker {..}
    = Tracker {positionFiltering = Prelude.pure newValue, ..}
instance Property "PricingPlan" Tracker where
  type PropertyType "PricingPlan" Tracker = Value Prelude.Text
  set newValue Tracker {..}
    = Tracker {pricingPlan = Prelude.pure newValue, ..}
instance Property "PricingPlanDataSource" Tracker where
  type PropertyType "PricingPlanDataSource" Tracker = Value Prelude.Text
  set newValue Tracker {..}
    = Tracker {pricingPlanDataSource = Prelude.pure newValue, ..}
instance Property "TrackerName" Tracker where
  type PropertyType "TrackerName" Tracker = Value Prelude.Text
  set newValue Tracker {..} = Tracker {trackerName = newValue, ..}