module Stratosphere.SSMContacts.Plan.StageProperty (
        module Exports, StageProperty(..), mkStageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMContacts.Plan.TargetsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StageProperty
  = StageProperty {durationInMinutes :: (Value Prelude.Integer),
                   targets :: (Prelude.Maybe [TargetsProperty])}
mkStageProperty :: Value Prelude.Integer -> StageProperty
mkStageProperty durationInMinutes
  = StageProperty
      {durationInMinutes = durationInMinutes, targets = Prelude.Nothing}
instance ToResourceProperties StageProperty where
  toResourceProperties StageProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Plan.Stage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DurationInMinutes" JSON..= durationInMinutes]
                           (Prelude.catMaybes [(JSON..=) "Targets" Prelude.<$> targets]))}
instance JSON.ToJSON StageProperty where
  toJSON StageProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DurationInMinutes" JSON..= durationInMinutes]
              (Prelude.catMaybes [(JSON..=) "Targets" Prelude.<$> targets])))
instance Property "DurationInMinutes" StageProperty where
  type PropertyType "DurationInMinutes" StageProperty = Value Prelude.Integer
  set newValue StageProperty {..}
    = StageProperty {durationInMinutes = newValue, ..}
instance Property "Targets" StageProperty where
  type PropertyType "Targets" StageProperty = [TargetsProperty]
  set newValue StageProperty {..}
    = StageProperty {targets = Prelude.pure newValue, ..}