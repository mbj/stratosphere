module Stratosphere.DataBrew.Project.SampleProperty (
        SampleProperty(..), mkSampleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SampleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-project-sample.html>
    SampleProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-project-sample.html#cfn-databrew-project-sample-size>
                    size :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-project-sample.html#cfn-databrew-project-sample-type>
                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSampleProperty :: Value Prelude.Text -> SampleProperty
mkSampleProperty type'
  = SampleProperty
      {haddock_workaround_ = (), type' = type', size = Prelude.Nothing}
instance ToResourceProperties SampleProperty where
  toResourceProperties SampleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Project.Sample",
         supportsTags = Prelude.False,
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