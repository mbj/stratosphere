module Stratosphere.QuickSight.Dashboard.MissingDataConfigurationProperty (
        MissingDataConfigurationProperty(..),
        mkMissingDataConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MissingDataConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-missingdataconfiguration.html>
    MissingDataConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-missingdataconfiguration.html#cfn-quicksight-dashboard-missingdataconfiguration-treatmentoption>
                                      treatmentOption :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMissingDataConfigurationProperty ::
  MissingDataConfigurationProperty
mkMissingDataConfigurationProperty
  = MissingDataConfigurationProperty
      {haddock_workaround_ = (), treatmentOption = Prelude.Nothing}
instance ToResourceProperties MissingDataConfigurationProperty where
  toResourceProperties MissingDataConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.MissingDataConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TreatmentOption" Prelude.<$> treatmentOption])}
instance JSON.ToJSON MissingDataConfigurationProperty where
  toJSON MissingDataConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TreatmentOption" Prelude.<$> treatmentOption]))
instance Property "TreatmentOption" MissingDataConfigurationProperty where
  type PropertyType "TreatmentOption" MissingDataConfigurationProperty = Value Prelude.Text
  set newValue MissingDataConfigurationProperty {..}
    = MissingDataConfigurationProperty
        {treatmentOption = Prelude.pure newValue, ..}