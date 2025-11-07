module Stratosphere.QuickSight.Dashboard.RowAlternateColorOptionsProperty (
        RowAlternateColorOptionsProperty(..),
        mkRowAlternateColorOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RowAlternateColorOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-rowalternatecoloroptions.html>
    RowAlternateColorOptionsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-rowalternatecoloroptions.html#cfn-quicksight-dashboard-rowalternatecoloroptions-rowalternatecolors>
                                      rowAlternateColors :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-rowalternatecoloroptions.html#cfn-quicksight-dashboard-rowalternatecoloroptions-status>
                                      status :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-rowalternatecoloroptions.html#cfn-quicksight-dashboard-rowalternatecoloroptions-useprimarybackgroundcolor>
                                      usePrimaryBackgroundColor :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRowAlternateColorOptionsProperty ::
  RowAlternateColorOptionsProperty
mkRowAlternateColorOptionsProperty
  = RowAlternateColorOptionsProperty
      {haddock_workaround_ = (), rowAlternateColors = Prelude.Nothing,
       status = Prelude.Nothing,
       usePrimaryBackgroundColor = Prelude.Nothing}
instance ToResourceProperties RowAlternateColorOptionsProperty where
  toResourceProperties RowAlternateColorOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.RowAlternateColorOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RowAlternateColors" Prelude.<$> rowAlternateColors,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "UsePrimaryBackgroundColor"
                              Prelude.<$> usePrimaryBackgroundColor])}
instance JSON.ToJSON RowAlternateColorOptionsProperty where
  toJSON RowAlternateColorOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RowAlternateColors" Prelude.<$> rowAlternateColors,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "UsePrimaryBackgroundColor"
                 Prelude.<$> usePrimaryBackgroundColor]))
instance Property "RowAlternateColors" RowAlternateColorOptionsProperty where
  type PropertyType "RowAlternateColors" RowAlternateColorOptionsProperty = ValueList Prelude.Text
  set newValue RowAlternateColorOptionsProperty {..}
    = RowAlternateColorOptionsProperty
        {rowAlternateColors = Prelude.pure newValue, ..}
instance Property "Status" RowAlternateColorOptionsProperty where
  type PropertyType "Status" RowAlternateColorOptionsProperty = Value Prelude.Text
  set newValue RowAlternateColorOptionsProperty {..}
    = RowAlternateColorOptionsProperty
        {status = Prelude.pure newValue, ..}
instance Property "UsePrimaryBackgroundColor" RowAlternateColorOptionsProperty where
  type PropertyType "UsePrimaryBackgroundColor" RowAlternateColorOptionsProperty = Value Prelude.Text
  set newValue RowAlternateColorOptionsProperty {..}
    = RowAlternateColorOptionsProperty
        {usePrimaryBackgroundColor = Prelude.pure newValue, ..}