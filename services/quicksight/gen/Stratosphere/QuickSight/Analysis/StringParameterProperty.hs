module Stratosphere.QuickSight.Analysis.StringParameterProperty (
        StringParameterProperty(..), mkStringParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StringParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-stringparameter.html>
    StringParameterProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-stringparameter.html#cfn-quicksight-analysis-stringparameter-name>
                             name :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-stringparameter.html#cfn-quicksight-analysis-stringparameter-values>
                             values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStringParameterProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> StringParameterProperty
mkStringParameterProperty name values
  = StringParameterProperty
      {haddock_workaround_ = (), name = name, values = values}
instance ToResourceProperties StringParameterProperty where
  toResourceProperties StringParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.StringParameter",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Values" JSON..= values]}
instance JSON.ToJSON StringParameterProperty where
  toJSON StringParameterProperty {..}
    = JSON.object ["Name" JSON..= name, "Values" JSON..= values]
instance Property "Name" StringParameterProperty where
  type PropertyType "Name" StringParameterProperty = Value Prelude.Text
  set newValue StringParameterProperty {..}
    = StringParameterProperty {name = newValue, ..}
instance Property "Values" StringParameterProperty where
  type PropertyType "Values" StringParameterProperty = ValueList Prelude.Text
  set newValue StringParameterProperty {..}
    = StringParameterProperty {values = newValue, ..}