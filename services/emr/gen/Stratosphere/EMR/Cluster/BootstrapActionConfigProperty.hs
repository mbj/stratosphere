module Stratosphere.EMR.Cluster.BootstrapActionConfigProperty (
        module Exports, BootstrapActionConfigProperty(..),
        mkBootstrapActionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.ScriptBootstrapActionConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BootstrapActionConfigProperty
  = BootstrapActionConfigProperty {name :: (Value Prelude.Text),
                                   scriptBootstrapAction :: ScriptBootstrapActionConfigProperty}
mkBootstrapActionConfigProperty ::
  Value Prelude.Text
  -> ScriptBootstrapActionConfigProperty
     -> BootstrapActionConfigProperty
mkBootstrapActionConfigProperty name scriptBootstrapAction
  = BootstrapActionConfigProperty
      {name = name, scriptBootstrapAction = scriptBootstrapAction}
instance ToResourceProperties BootstrapActionConfigProperty where
  toResourceProperties BootstrapActionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.BootstrapActionConfig",
         properties = ["Name" JSON..= name,
                       "ScriptBootstrapAction" JSON..= scriptBootstrapAction]}
instance JSON.ToJSON BootstrapActionConfigProperty where
  toJSON BootstrapActionConfigProperty {..}
    = JSON.object
        ["Name" JSON..= name,
         "ScriptBootstrapAction" JSON..= scriptBootstrapAction]
instance Property "Name" BootstrapActionConfigProperty where
  type PropertyType "Name" BootstrapActionConfigProperty = Value Prelude.Text
  set newValue BootstrapActionConfigProperty {..}
    = BootstrapActionConfigProperty {name = newValue, ..}
instance Property "ScriptBootstrapAction" BootstrapActionConfigProperty where
  type PropertyType "ScriptBootstrapAction" BootstrapActionConfigProperty = ScriptBootstrapActionConfigProperty
  set newValue BootstrapActionConfigProperty {..}
    = BootstrapActionConfigProperty
        {scriptBootstrapAction = newValue, ..}