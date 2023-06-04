module Stratosphere.Batch.JobDefinition.EksContainerProperty (
        module Exports, EksContainerProperty(..), mkEksContainerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksContainerEnvironmentVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksContainerResourceRequirementsProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksContainerSecurityContextProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksContainerVolumeMountProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksContainerProperty
  = EksContainerProperty {args :: (Prelude.Maybe (ValueList Prelude.Text)),
                          command :: (Prelude.Maybe (ValueList Prelude.Text)),
                          env :: (Prelude.Maybe [EksContainerEnvironmentVariableProperty]),
                          image :: (Value Prelude.Text),
                          imagePullPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                          name :: (Prelude.Maybe (Value Prelude.Text)),
                          resources :: (Prelude.Maybe EksContainerResourceRequirementsProperty),
                          securityContext :: (Prelude.Maybe EksContainerSecurityContextProperty),
                          volumeMounts :: (Prelude.Maybe [EksContainerVolumeMountProperty])}
mkEksContainerProperty ::
  Value Prelude.Text -> EksContainerProperty
mkEksContainerProperty image
  = EksContainerProperty
      {image = image, args = Prelude.Nothing, command = Prelude.Nothing,
       env = Prelude.Nothing, imagePullPolicy = Prelude.Nothing,
       name = Prelude.Nothing, resources = Prelude.Nothing,
       securityContext = Prelude.Nothing, volumeMounts = Prelude.Nothing}
instance ToResourceProperties EksContainerProperty where
  toResourceProperties EksContainerProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksContainer",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Image" JSON..= image]
                           (Prelude.catMaybes
                              [(JSON..=) "Args" Prelude.<$> args,
                               (JSON..=) "Command" Prelude.<$> command,
                               (JSON..=) "Env" Prelude.<$> env,
                               (JSON..=) "ImagePullPolicy" Prelude.<$> imagePullPolicy,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Resources" Prelude.<$> resources,
                               (JSON..=) "SecurityContext" Prelude.<$> securityContext,
                               (JSON..=) "VolumeMounts" Prelude.<$> volumeMounts]))}
instance JSON.ToJSON EksContainerProperty where
  toJSON EksContainerProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Image" JSON..= image]
              (Prelude.catMaybes
                 [(JSON..=) "Args" Prelude.<$> args,
                  (JSON..=) "Command" Prelude.<$> command,
                  (JSON..=) "Env" Prelude.<$> env,
                  (JSON..=) "ImagePullPolicy" Prelude.<$> imagePullPolicy,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Resources" Prelude.<$> resources,
                  (JSON..=) "SecurityContext" Prelude.<$> securityContext,
                  (JSON..=) "VolumeMounts" Prelude.<$> volumeMounts])))
instance Property "Args" EksContainerProperty where
  type PropertyType "Args" EksContainerProperty = ValueList Prelude.Text
  set newValue EksContainerProperty {..}
    = EksContainerProperty {args = Prelude.pure newValue, ..}
instance Property "Command" EksContainerProperty where
  type PropertyType "Command" EksContainerProperty = ValueList Prelude.Text
  set newValue EksContainerProperty {..}
    = EksContainerProperty {command = Prelude.pure newValue, ..}
instance Property "Env" EksContainerProperty where
  type PropertyType "Env" EksContainerProperty = [EksContainerEnvironmentVariableProperty]
  set newValue EksContainerProperty {..}
    = EksContainerProperty {env = Prelude.pure newValue, ..}
instance Property "Image" EksContainerProperty where
  type PropertyType "Image" EksContainerProperty = Value Prelude.Text
  set newValue EksContainerProperty {..}
    = EksContainerProperty {image = newValue, ..}
instance Property "ImagePullPolicy" EksContainerProperty where
  type PropertyType "ImagePullPolicy" EksContainerProperty = Value Prelude.Text
  set newValue EksContainerProperty {..}
    = EksContainerProperty
        {imagePullPolicy = Prelude.pure newValue, ..}
instance Property "Name" EksContainerProperty where
  type PropertyType "Name" EksContainerProperty = Value Prelude.Text
  set newValue EksContainerProperty {..}
    = EksContainerProperty {name = Prelude.pure newValue, ..}
instance Property "Resources" EksContainerProperty where
  type PropertyType "Resources" EksContainerProperty = EksContainerResourceRequirementsProperty
  set newValue EksContainerProperty {..}
    = EksContainerProperty {resources = Prelude.pure newValue, ..}
instance Property "SecurityContext" EksContainerProperty where
  type PropertyType "SecurityContext" EksContainerProperty = EksContainerSecurityContextProperty
  set newValue EksContainerProperty {..}
    = EksContainerProperty
        {securityContext = Prelude.pure newValue, ..}
instance Property "VolumeMounts" EksContainerProperty where
  type PropertyType "VolumeMounts" EksContainerProperty = [EksContainerVolumeMountProperty]
  set newValue EksContainerProperty {..}
    = EksContainerProperty {volumeMounts = Prelude.pure newValue, ..}