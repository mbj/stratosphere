module Stratosphere.Batch.JobDefinition.EksContainerSecurityContextProperty (
        EksContainerSecurityContextProperty(..),
        mkEksContainerSecurityContextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksContainerSecurityContextProperty
  = EksContainerSecurityContextProperty {allowPrivilegeEscalation :: (Prelude.Maybe (Value Prelude.Bool)),
                                         privileged :: (Prelude.Maybe (Value Prelude.Bool)),
                                         readOnlyRootFilesystem :: (Prelude.Maybe (Value Prelude.Bool)),
                                         runAsGroup :: (Prelude.Maybe (Value Prelude.Integer)),
                                         runAsNonRoot :: (Prelude.Maybe (Value Prelude.Bool)),
                                         runAsUser :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksContainerSecurityContextProperty ::
  EksContainerSecurityContextProperty
mkEksContainerSecurityContextProperty
  = EksContainerSecurityContextProperty
      {allowPrivilegeEscalation = Prelude.Nothing,
       privileged = Prelude.Nothing,
       readOnlyRootFilesystem = Prelude.Nothing,
       runAsGroup = Prelude.Nothing, runAsNonRoot = Prelude.Nothing,
       runAsUser = Prelude.Nothing}
instance ToResourceProperties EksContainerSecurityContextProperty where
  toResourceProperties EksContainerSecurityContextProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksContainerSecurityContext",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowPrivilegeEscalation"
                              Prelude.<$> allowPrivilegeEscalation,
                            (JSON..=) "Privileged" Prelude.<$> privileged,
                            (JSON..=) "ReadOnlyRootFilesystem"
                              Prelude.<$> readOnlyRootFilesystem,
                            (JSON..=) "RunAsGroup" Prelude.<$> runAsGroup,
                            (JSON..=) "RunAsNonRoot" Prelude.<$> runAsNonRoot,
                            (JSON..=) "RunAsUser" Prelude.<$> runAsUser])}
instance JSON.ToJSON EksContainerSecurityContextProperty where
  toJSON EksContainerSecurityContextProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowPrivilegeEscalation"
                 Prelude.<$> allowPrivilegeEscalation,
               (JSON..=) "Privileged" Prelude.<$> privileged,
               (JSON..=) "ReadOnlyRootFilesystem"
                 Prelude.<$> readOnlyRootFilesystem,
               (JSON..=) "RunAsGroup" Prelude.<$> runAsGroup,
               (JSON..=) "RunAsNonRoot" Prelude.<$> runAsNonRoot,
               (JSON..=) "RunAsUser" Prelude.<$> runAsUser]))
instance Property "AllowPrivilegeEscalation" EksContainerSecurityContextProperty where
  type PropertyType "AllowPrivilegeEscalation" EksContainerSecurityContextProperty = Value Prelude.Bool
  set newValue EksContainerSecurityContextProperty {..}
    = EksContainerSecurityContextProperty
        {allowPrivilegeEscalation = Prelude.pure newValue, ..}
instance Property "Privileged" EksContainerSecurityContextProperty where
  type PropertyType "Privileged" EksContainerSecurityContextProperty = Value Prelude.Bool
  set newValue EksContainerSecurityContextProperty {..}
    = EksContainerSecurityContextProperty
        {privileged = Prelude.pure newValue, ..}
instance Property "ReadOnlyRootFilesystem" EksContainerSecurityContextProperty where
  type PropertyType "ReadOnlyRootFilesystem" EksContainerSecurityContextProperty = Value Prelude.Bool
  set newValue EksContainerSecurityContextProperty {..}
    = EksContainerSecurityContextProperty
        {readOnlyRootFilesystem = Prelude.pure newValue, ..}
instance Property "RunAsGroup" EksContainerSecurityContextProperty where
  type PropertyType "RunAsGroup" EksContainerSecurityContextProperty = Value Prelude.Integer
  set newValue EksContainerSecurityContextProperty {..}
    = EksContainerSecurityContextProperty
        {runAsGroup = Prelude.pure newValue, ..}
instance Property "RunAsNonRoot" EksContainerSecurityContextProperty where
  type PropertyType "RunAsNonRoot" EksContainerSecurityContextProperty = Value Prelude.Bool
  set newValue EksContainerSecurityContextProperty {..}
    = EksContainerSecurityContextProperty
        {runAsNonRoot = Prelude.pure newValue, ..}
instance Property "RunAsUser" EksContainerSecurityContextProperty where
  type PropertyType "RunAsUser" EksContainerSecurityContextProperty = Value Prelude.Integer
  set newValue EksContainerSecurityContextProperty {..}
    = EksContainerSecurityContextProperty
        {runAsUser = Prelude.pure newValue, ..}