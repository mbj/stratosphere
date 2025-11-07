module Stratosphere.QuickSight.Dashboard.KPIVisualStandardLayoutProperty (
        KPIVisualStandardLayoutProperty(..),
        mkKPIVisualStandardLayoutProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KPIVisualStandardLayoutProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpivisualstandardlayout.html>
    KPIVisualStandardLayoutProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpivisualstandardlayout.html#cfn-quicksight-dashboard-kpivisualstandardlayout-type>
                                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIVisualStandardLayoutProperty ::
  Value Prelude.Text -> KPIVisualStandardLayoutProperty
mkKPIVisualStandardLayoutProperty type'
  = KPIVisualStandardLayoutProperty
      {haddock_workaround_ = (), type' = type'}
instance ToResourceProperties KPIVisualStandardLayoutProperty where
  toResourceProperties KPIVisualStandardLayoutProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.KPIVisualStandardLayout",
         supportsTags = Prelude.False, properties = ["Type" JSON..= type']}
instance JSON.ToJSON KPIVisualStandardLayoutProperty where
  toJSON KPIVisualStandardLayoutProperty {..}
    = JSON.object ["Type" JSON..= type']
instance Property "Type" KPIVisualStandardLayoutProperty where
  type PropertyType "Type" KPIVisualStandardLayoutProperty = Value Prelude.Text
  set newValue KPIVisualStandardLayoutProperty {..}
    = KPIVisualStandardLayoutProperty {type' = newValue, ..}