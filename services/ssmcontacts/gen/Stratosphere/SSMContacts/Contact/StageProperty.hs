module Stratosphere.SSMContacts.Contact.StageProperty (
        module Exports, StageProperty(..), mkStageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMContacts.Contact.TargetsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-contact-stage.html>
    StageProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-contact-stage.html#cfn-ssmcontacts-contact-stage-durationinminutes>
                   durationInMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-contact-stage.html#cfn-ssmcontacts-contact-stage-rotationids>
                   rotationIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-contact-stage.html#cfn-ssmcontacts-contact-stage-targets>
                   targets :: (Prelude.Maybe [TargetsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStageProperty :: StageProperty
mkStageProperty
  = StageProperty
      {haddock_workaround_ = (), durationInMinutes = Prelude.Nothing,
       rotationIds = Prelude.Nothing, targets = Prelude.Nothing}
instance ToResourceProperties StageProperty where
  toResourceProperties StageProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Contact.Stage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DurationInMinutes" Prelude.<$> durationInMinutes,
                            (JSON..=) "RotationIds" Prelude.<$> rotationIds,
                            (JSON..=) "Targets" Prelude.<$> targets])}
instance JSON.ToJSON StageProperty where
  toJSON StageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DurationInMinutes" Prelude.<$> durationInMinutes,
               (JSON..=) "RotationIds" Prelude.<$> rotationIds,
               (JSON..=) "Targets" Prelude.<$> targets]))
instance Property "DurationInMinutes" StageProperty where
  type PropertyType "DurationInMinutes" StageProperty = Value Prelude.Integer
  set newValue StageProperty {..}
    = StageProperty {durationInMinutes = Prelude.pure newValue, ..}
instance Property "RotationIds" StageProperty where
  type PropertyType "RotationIds" StageProperty = ValueList Prelude.Text
  set newValue StageProperty {..}
    = StageProperty {rotationIds = Prelude.pure newValue, ..}
instance Property "Targets" StageProperty where
  type PropertyType "Targets" StageProperty = [TargetsProperty]
  set newValue StageProperty {..}
    = StageProperty {targets = Prelude.pure newValue, ..}