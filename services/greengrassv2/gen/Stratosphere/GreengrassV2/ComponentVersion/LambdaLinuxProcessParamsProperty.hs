module Stratosphere.GreengrassV2.ComponentVersion.LambdaLinuxProcessParamsProperty (
        module Exports, LambdaLinuxProcessParamsProperty(..),
        mkLambdaLinuxProcessParamsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.ComponentVersion.LambdaContainerParamsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaLinuxProcessParamsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdalinuxprocessparams.html>
    LambdaLinuxProcessParamsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdalinuxprocessparams.html#cfn-greengrassv2-componentversion-lambdalinuxprocessparams-containerparams>
                                      containerParams :: (Prelude.Maybe LambdaContainerParamsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdalinuxprocessparams.html#cfn-greengrassv2-componentversion-lambdalinuxprocessparams-isolationmode>
                                      isolationMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaLinuxProcessParamsProperty ::
  LambdaLinuxProcessParamsProperty
mkLambdaLinuxProcessParamsProperty
  = LambdaLinuxProcessParamsProperty
      {haddock_workaround_ = (), containerParams = Prelude.Nothing,
       isolationMode = Prelude.Nothing}
instance ToResourceProperties LambdaLinuxProcessParamsProperty where
  toResourceProperties LambdaLinuxProcessParamsProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::ComponentVersion.LambdaLinuxProcessParams",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerParams" Prelude.<$> containerParams,
                            (JSON..=) "IsolationMode" Prelude.<$> isolationMode])}
instance JSON.ToJSON LambdaLinuxProcessParamsProperty where
  toJSON LambdaLinuxProcessParamsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerParams" Prelude.<$> containerParams,
               (JSON..=) "IsolationMode" Prelude.<$> isolationMode]))
instance Property "ContainerParams" LambdaLinuxProcessParamsProperty where
  type PropertyType "ContainerParams" LambdaLinuxProcessParamsProperty = LambdaContainerParamsProperty
  set newValue LambdaLinuxProcessParamsProperty {..}
    = LambdaLinuxProcessParamsProperty
        {containerParams = Prelude.pure newValue, ..}
instance Property "IsolationMode" LambdaLinuxProcessParamsProperty where
  type PropertyType "IsolationMode" LambdaLinuxProcessParamsProperty = Value Prelude.Text
  set newValue LambdaLinuxProcessParamsProperty {..}
    = LambdaLinuxProcessParamsProperty
        {isolationMode = Prelude.pure newValue, ..}