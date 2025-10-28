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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-componentrunwith.html>
    ComponentRunWithProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-componentrunwith.html#cfn-greengrassv2-deployment-componentrunwith-posixuser>
                              posixUser :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-componentrunwith.html#cfn-greengrassv2-deployment-componentrunwith-systemresourcelimits>
                              systemResourceLimits :: (Prelude.Maybe SystemResourceLimitsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-componentrunwith.html#cfn-greengrassv2-deployment-componentrunwith-windowsuser>
                              windowsUser :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentRunWithProperty :: ComponentRunWithProperty
mkComponentRunWithProperty
  = ComponentRunWithProperty
      {haddock_workaround_ = (), posixUser = Prelude.Nothing,
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