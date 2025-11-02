module Stratosphere.AppFlow.Flow.PrefixConfigProperty (
        PrefixConfigProperty(..), mkPrefixConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrefixConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-prefixconfig.html>
    PrefixConfigProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-prefixconfig.html#cfn-appflow-flow-prefixconfig-pathprefixhierarchy>
                          pathPrefixHierarchy :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-prefixconfig.html#cfn-appflow-flow-prefixconfig-prefixformat>
                          prefixFormat :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-prefixconfig.html#cfn-appflow-flow-prefixconfig-prefixtype>
                          prefixType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrefixConfigProperty :: PrefixConfigProperty
mkPrefixConfigProperty
  = PrefixConfigProperty
      {haddock_workaround_ = (), pathPrefixHierarchy = Prelude.Nothing,
       prefixFormat = Prelude.Nothing, prefixType = Prelude.Nothing}
instance ToResourceProperties PrefixConfigProperty where
  toResourceProperties PrefixConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.PrefixConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PathPrefixHierarchy" Prelude.<$> pathPrefixHierarchy,
                            (JSON..=) "PrefixFormat" Prelude.<$> prefixFormat,
                            (JSON..=) "PrefixType" Prelude.<$> prefixType])}
instance JSON.ToJSON PrefixConfigProperty where
  toJSON PrefixConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PathPrefixHierarchy" Prelude.<$> pathPrefixHierarchy,
               (JSON..=) "PrefixFormat" Prelude.<$> prefixFormat,
               (JSON..=) "PrefixType" Prelude.<$> prefixType]))
instance Property "PathPrefixHierarchy" PrefixConfigProperty where
  type PropertyType "PathPrefixHierarchy" PrefixConfigProperty = ValueList Prelude.Text
  set newValue PrefixConfigProperty {..}
    = PrefixConfigProperty
        {pathPrefixHierarchy = Prelude.pure newValue, ..}
instance Property "PrefixFormat" PrefixConfigProperty where
  type PropertyType "PrefixFormat" PrefixConfigProperty = Value Prelude.Text
  set newValue PrefixConfigProperty {..}
    = PrefixConfigProperty {prefixFormat = Prelude.pure newValue, ..}
instance Property "PrefixType" PrefixConfigProperty where
  type PropertyType "PrefixType" PrefixConfigProperty = Value Prelude.Text
  set newValue PrefixConfigProperty {..}
    = PrefixConfigProperty {prefixType = Prelude.pure newValue, ..}