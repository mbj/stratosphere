module Stratosphere.AppTest.TestCase.M2ManagedActionPropertiesProperty (
        M2ManagedActionPropertiesProperty(..),
        mkM2ManagedActionPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data M2ManagedActionPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-m2managedactionproperties.html>
    M2ManagedActionPropertiesProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-m2managedactionproperties.html#cfn-apptest-testcase-m2managedactionproperties-forcestop>
                                       forceStop :: (Prelude.Maybe (Value Prelude.Bool)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-m2managedactionproperties.html#cfn-apptest-testcase-m2managedactionproperties-importdatasetlocation>
                                       importDataSetLocation :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkM2ManagedActionPropertiesProperty ::
  M2ManagedActionPropertiesProperty
mkM2ManagedActionPropertiesProperty
  = M2ManagedActionPropertiesProperty
      {haddock_workaround_ = (), forceStop = Prelude.Nothing,
       importDataSetLocation = Prelude.Nothing}
instance ToResourceProperties M2ManagedActionPropertiesProperty where
  toResourceProperties M2ManagedActionPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.M2ManagedActionProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ForceStop" Prelude.<$> forceStop,
                            (JSON..=) "ImportDataSetLocation"
                              Prelude.<$> importDataSetLocation])}
instance JSON.ToJSON M2ManagedActionPropertiesProperty where
  toJSON M2ManagedActionPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ForceStop" Prelude.<$> forceStop,
               (JSON..=) "ImportDataSetLocation"
                 Prelude.<$> importDataSetLocation]))
instance Property "ForceStop" M2ManagedActionPropertiesProperty where
  type PropertyType "ForceStop" M2ManagedActionPropertiesProperty = Value Prelude.Bool
  set newValue M2ManagedActionPropertiesProperty {..}
    = M2ManagedActionPropertiesProperty
        {forceStop = Prelude.pure newValue, ..}
instance Property "ImportDataSetLocation" M2ManagedActionPropertiesProperty where
  type PropertyType "ImportDataSetLocation" M2ManagedActionPropertiesProperty = Value Prelude.Text
  set newValue M2ManagedActionPropertiesProperty {..}
    = M2ManagedActionPropertiesProperty
        {importDataSetLocation = Prelude.pure newValue, ..}