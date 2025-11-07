module Stratosphere.Synthetics.Canary.DependencyProperty (
        DependencyProperty(..), mkDependencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DependencyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-dependency.html>
    DependencyProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-dependency.html#cfn-synthetics-canary-dependency-reference>
                        reference :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-dependency.html#cfn-synthetics-canary-dependency-type>
                        type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDependencyProperty :: Value Prelude.Text -> DependencyProperty
mkDependencyProperty reference
  = DependencyProperty
      {haddock_workaround_ = (), reference = reference,
       type' = Prelude.Nothing}
instance ToResourceProperties DependencyProperty where
  toResourceProperties DependencyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary.Dependency",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Reference" JSON..= reference]
                           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON DependencyProperty where
  toJSON DependencyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Reference" JSON..= reference]
              (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])))
instance Property "Reference" DependencyProperty where
  type PropertyType "Reference" DependencyProperty = Value Prelude.Text
  set newValue DependencyProperty {..}
    = DependencyProperty {reference = newValue, ..}
instance Property "Type" DependencyProperty where
  type PropertyType "Type" DependencyProperty = Value Prelude.Text
  set newValue DependencyProperty {..}
    = DependencyProperty {type' = Prelude.pure newValue, ..}