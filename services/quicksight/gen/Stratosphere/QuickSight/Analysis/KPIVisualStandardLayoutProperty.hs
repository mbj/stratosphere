module Stratosphere.QuickSight.Analysis.KPIVisualStandardLayoutProperty (
        KPIVisualStandardLayoutProperty(..),
        mkKPIVisualStandardLayoutProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KPIVisualStandardLayoutProperty
  = KPIVisualStandardLayoutProperty {type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIVisualStandardLayoutProperty ::
  Value Prelude.Text -> KPIVisualStandardLayoutProperty
mkKPIVisualStandardLayoutProperty type'
  = KPIVisualStandardLayoutProperty {type' = type'}
instance ToResourceProperties KPIVisualStandardLayoutProperty where
  toResourceProperties KPIVisualStandardLayoutProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.KPIVisualStandardLayout",
         supportsTags = Prelude.False, properties = ["Type" JSON..= type']}
instance JSON.ToJSON KPIVisualStandardLayoutProperty where
  toJSON KPIVisualStandardLayoutProperty {..}
    = JSON.object ["Type" JSON..= type']
instance Property "Type" KPIVisualStandardLayoutProperty where
  type PropertyType "Type" KPIVisualStandardLayoutProperty = Value Prelude.Text
  set newValue KPIVisualStandardLayoutProperty {}
    = KPIVisualStandardLayoutProperty {type' = newValue, ..}