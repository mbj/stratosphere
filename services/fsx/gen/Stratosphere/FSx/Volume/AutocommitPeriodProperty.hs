module Stratosphere.FSx.Volume.AutocommitPeriodProperty (
        AutocommitPeriodProperty(..), mkAutocommitPeriodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutocommitPeriodProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-snaplockconfiguration-autocommitperiod.html>
    AutocommitPeriodProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-snaplockconfiguration-autocommitperiod.html#cfn-fsx-volume-ontapconfiguration-snaplockconfiguration-autocommitperiod-type>
                              type' :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-snaplockconfiguration-autocommitperiod.html#cfn-fsx-volume-ontapconfiguration-snaplockconfiguration-autocommitperiod-value>
                              value :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutocommitPeriodProperty ::
  Value Prelude.Text -> AutocommitPeriodProperty
mkAutocommitPeriodProperty type'
  = AutocommitPeriodProperty
      {haddock_workaround_ = (), type' = type', value = Prelude.Nothing}
instance ToResourceProperties AutocommitPeriodProperty where
  toResourceProperties AutocommitPeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.AutocommitPeriod",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON AutocommitPeriodProperty where
  toJSON AutocommitPeriodProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Type" AutocommitPeriodProperty where
  type PropertyType "Type" AutocommitPeriodProperty = Value Prelude.Text
  set newValue AutocommitPeriodProperty {..}
    = AutocommitPeriodProperty {type' = newValue, ..}
instance Property "Value" AutocommitPeriodProperty where
  type PropertyType "Value" AutocommitPeriodProperty = Value Prelude.Integer
  set newValue AutocommitPeriodProperty {..}
    = AutocommitPeriodProperty {value = Prelude.pure newValue, ..}