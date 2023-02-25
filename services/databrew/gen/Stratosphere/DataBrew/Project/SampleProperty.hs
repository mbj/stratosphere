module Stratosphere.DataBrew.Project.SampleProperty (
        SampleProperty(..), mkSampleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SampleProperty
  = SampleProperty {size :: (Prelude.Maybe (Value Prelude.Integer)),
                    type' :: (Value Prelude.Text)}
mkSampleProperty :: Value Prelude.Text -> SampleProperty
mkSampleProperty type'
  = SampleProperty {type' = type', size = Prelude.Nothing}
instance ToResourceProperties SampleProperty where
  toResourceProperties SampleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Project.Sample",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Size" Prelude.<$> size]))}
instance JSON.ToJSON SampleProperty where
  toJSON SampleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Size" Prelude.<$> size])))
instance Property "Size" SampleProperty where
  type PropertyType "Size" SampleProperty = Value Prelude.Integer
  set newValue SampleProperty {..}
    = SampleProperty {size = Prelude.pure newValue, ..}
instance Property "Type" SampleProperty where
  type PropertyType "Type" SampleProperty = Value Prelude.Text
  set newValue SampleProperty {..}
    = SampleProperty {type' = newValue, ..}