module Stratosphere.GreengrassV2.Deployment.ComponentRunWithProperty (
        module Exports, ComponentRunWithProperty(..),
        mkComponentRunWithProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.SystemResourceLimitsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentRunWithProperty
  = ComponentRunWithProperty {posixUser :: (Prelude.Maybe (Value Prelude.Text)),
                              systemResourceLimits :: (Prelude.Maybe SystemResourceLimitsProperty),
                              windowsUser :: (Prelude.Maybe (Value Prelude.Text))}
mkComponentRunWithProperty :: ComponentRunWithProperty
mkComponentRunWithProperty
  = ComponentRunWithProperty
      {posixUser = Prelude.Nothing,
       systemResourceLimits = Prelude.Nothing,
       windowsUser = Prelude.Nothing}
instance ToResourceProperties ComponentRunWithProperty where
  toResourceProperties ComponentRunWithProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.ComponentRunWith",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PosixUser" Prelude.<$> posixUser,
                            (JSON..=) "SystemResourceLimits" Prelude.<$> systemResourceLimits,
                            (JSON..=) "WindowsUser" Prelude.<$> windowsUser])}
instance JSON.ToJSON ComponentRunWithProperty where
  toJSON ComponentRunWithProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PosixUser" Prelude.<$> posixUser,
               (JSON..=) "SystemResourceLimits" Prelude.<$> systemResourceLimits,
               (JSON..=) "WindowsUser" Prelude.<$> windowsUser]))
instance Property "PosixUser" ComponentRunWithProperty where
  type PropertyType "PosixUser" ComponentRunWithProperty = Value Prelude.Text
  set newValue ComponentRunWithProperty {..}
    = ComponentRunWithProperty {posixUser = Prelude.pure newValue, ..}
instance Property "SystemResourceLimits" ComponentRunWithProperty where
  type PropertyType "SystemResourceLimits" ComponentRunWithProperty = SystemResourceLimitsProperty
  set newValue ComponentRunWithProperty {..}
    = ComponentRunWithProperty
        {systemResourceLimits = Prelude.pure newValue, ..}
instance Property "WindowsUser" ComponentRunWithProperty where
  type PropertyType "WindowsUser" ComponentRunWithProperty = Value Prelude.Text
  set newValue ComponentRunWithProperty {..}
    = ComponentRunWithProperty
        {windowsUser = Prelude.pure newValue, ..}