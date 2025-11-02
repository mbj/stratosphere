module Stratosphere.ResourceExplorer2.View.IncludedPropertyProperty (
        IncludedPropertyProperty(..), mkIncludedPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IncludedPropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourceexplorer2-view-includedproperty.html>
    IncludedPropertyProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourceexplorer2-view-includedproperty.html#cfn-resourceexplorer2-view-includedproperty-name>
                              name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIncludedPropertyProperty ::
  Value Prelude.Text -> IncludedPropertyProperty
mkIncludedPropertyProperty name
  = IncludedPropertyProperty {haddock_workaround_ = (), name = name}
instance ToResourceProperties IncludedPropertyProperty where
  toResourceProperties IncludedPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResourceExplorer2::View.IncludedProperty",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON IncludedPropertyProperty where
  toJSON IncludedPropertyProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" IncludedPropertyProperty where
  type PropertyType "Name" IncludedPropertyProperty = Value Prelude.Text
  set newValue IncludedPropertyProperty {..}
    = IncludedPropertyProperty {name = newValue, ..}