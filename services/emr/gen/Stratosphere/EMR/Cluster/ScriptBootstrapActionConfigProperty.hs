module Stratosphere.EMR.Cluster.ScriptBootstrapActionConfigProperty (
        ScriptBootstrapActionConfigProperty(..),
        mkScriptBootstrapActionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScriptBootstrapActionConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scriptbootstrapactionconfig.html>
    ScriptBootstrapActionConfigProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scriptbootstrapactionconfig.html#cfn-elasticmapreduce-cluster-scriptbootstrapactionconfig-args>
                                         args :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scriptbootstrapactionconfig.html#cfn-elasticmapreduce-cluster-scriptbootstrapactionconfig-path>
                                         path :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScriptBootstrapActionConfigProperty ::
  Value Prelude.Text -> ScriptBootstrapActionConfigProperty
mkScriptBootstrapActionConfigProperty path
  = ScriptBootstrapActionConfigProperty
      {haddock_workaround_ = (), path = path, args = Prelude.Nothing}
instance ToResourceProperties ScriptBootstrapActionConfigProperty where
  toResourceProperties ScriptBootstrapActionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.ScriptBootstrapActionConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Path" JSON..= path]
                           (Prelude.catMaybes [(JSON..=) "Args" Prelude.<$> args]))}
instance JSON.ToJSON ScriptBootstrapActionConfigProperty where
  toJSON ScriptBootstrapActionConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Path" JSON..= path]
              (Prelude.catMaybes [(JSON..=) "Args" Prelude.<$> args])))
instance Property "Args" ScriptBootstrapActionConfigProperty where
  type PropertyType "Args" ScriptBootstrapActionConfigProperty = ValueList Prelude.Text
  set newValue ScriptBootstrapActionConfigProperty {..}
    = ScriptBootstrapActionConfigProperty
        {args = Prelude.pure newValue, ..}
instance Property "Path" ScriptBootstrapActionConfigProperty where
  type PropertyType "Path" ScriptBootstrapActionConfigProperty = Value Prelude.Text
  set newValue ScriptBootstrapActionConfigProperty {..}
    = ScriptBootstrapActionConfigProperty {path = newValue, ..}