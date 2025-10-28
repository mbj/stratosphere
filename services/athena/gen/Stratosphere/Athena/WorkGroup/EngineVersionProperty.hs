module Stratosphere.Athena.WorkGroup.EngineVersionProperty (
        EngineVersionProperty(..), mkEngineVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EngineVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-engineversion.html>
    EngineVersionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-engineversion.html#cfn-athena-workgroup-engineversion-effectiveengineversion>
                           effectiveEngineVersion :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-engineversion.html#cfn-athena-workgroup-engineversion-selectedengineversion>
                           selectedEngineVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEngineVersionProperty :: EngineVersionProperty
mkEngineVersionProperty
  = EngineVersionProperty
      {haddock_workaround_ = (),
       effectiveEngineVersion = Prelude.Nothing,
       selectedEngineVersion = Prelude.Nothing}
instance ToResourceProperties EngineVersionProperty where
  toResourceProperties EngineVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Athena::WorkGroup.EngineVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EffectiveEngineVersion"
                              Prelude.<$> effectiveEngineVersion,
                            (JSON..=) "SelectedEngineVersion"
                              Prelude.<$> selectedEngineVersion])}
instance JSON.ToJSON EngineVersionProperty where
  toJSON EngineVersionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EffectiveEngineVersion"
                 Prelude.<$> effectiveEngineVersion,
               (JSON..=) "SelectedEngineVersion"
                 Prelude.<$> selectedEngineVersion]))
instance Property "EffectiveEngineVersion" EngineVersionProperty where
  type PropertyType "EffectiveEngineVersion" EngineVersionProperty = Value Prelude.Text
  set newValue EngineVersionProperty {..}
    = EngineVersionProperty
        {effectiveEngineVersion = Prelude.pure newValue, ..}
instance Property "SelectedEngineVersion" EngineVersionProperty where
  type PropertyType "SelectedEngineVersion" EngineVersionProperty = Value Prelude.Text
  set newValue EngineVersionProperty {..}
    = EngineVersionProperty
        {selectedEngineVersion = Prelude.pure newValue, ..}