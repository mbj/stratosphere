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
  = LambdaLinuxProcessParamsProperty {containerParams :: (Prelude.Maybe LambdaContainerParamsProperty),
                                      isolationMode :: (Prelude.Maybe (Value Prelude.Text))}
mkLambdaLinuxProcessParamsProperty ::
  LambdaLinuxProcessParamsProperty
mkLambdaLinuxProcessParamsProperty
  = LambdaLinuxProcessParamsProperty
      {containerParams = Prelude.Nothing,
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