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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-plan-stage.html>
    StageProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-plan-stage.html#cfn-ssmcontacts-plan-stage-durationinminutes>
                   durationInMinutes :: (Value Prelude.Integer),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-plan-stage.html#cfn-ssmcontacts-plan-stage-targets>
                   targets :: (Prelude.Maybe [TargetsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStageProperty :: Value Prelude.Integer -> StageProperty
mkStageProperty durationInMinutes
  = StageProperty
      {haddock_workaround_ = (), durationInMinutes = durationInMinutes,
       targets = Prelude.Nothing}
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