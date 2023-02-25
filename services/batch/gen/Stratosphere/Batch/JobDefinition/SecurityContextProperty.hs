module Stratosphere.Batch.JobDefinition.SecurityContextProperty (
        SecurityContextProperty(..), mkSecurityContextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityContextProperty
  = SecurityContextProperty {privileged :: (Prelude.Maybe (Value Prelude.Bool)),
                             readOnlyRootFilesystem :: (Prelude.Maybe (Value Prelude.Bool)),
                             runAsGroup :: (Prelude.Maybe (Value Prelude.Integer)),
                             runAsNonRoot :: (Prelude.Maybe (Value Prelude.Bool)),
                             runAsUser :: (Prelude.Maybe (Value Prelude.Integer))}
mkSecurityContextProperty :: SecurityContextProperty
mkSecurityContextProperty
  = SecurityContextProperty
      {privileged = Prelude.Nothing,
       readOnlyRootFilesystem = Prelude.Nothing,
       runAsGroup = Prelude.Nothing, runAsNonRoot = Prelude.Nothing,
       runAsUser = Prelude.Nothing}
instance ToResourceProperties SecurityContextProperty where
  toResourceProperties SecurityContextProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.SecurityContext",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Privileged" Prelude.<$> privileged,
                            (JSON..=) "ReadOnlyRootFilesystem"
                              Prelude.<$> readOnlyRootFilesystem,
                            (JSON..=) "RunAsGroup" Prelude.<$> runAsGroup,
                            (JSON..=) "RunAsNonRoot" Prelude.<$> runAsNonRoot,
                            (JSON..=) "RunAsUser" Prelude.<$> runAsUser])}
instance JSON.ToJSON SecurityContextProperty where
  toJSON SecurityContextProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Privileged" Prelude.<$> privileged,
               (JSON..=) "ReadOnlyRootFilesystem"
                 Prelude.<$> readOnlyRootFilesystem,
               (JSON..=) "RunAsGroup" Prelude.<$> runAsGroup,
               (JSON..=) "RunAsNonRoot" Prelude.<$> runAsNonRoot,
               (JSON..=) "RunAsUser" Prelude.<$> runAsUser]))
instance Property "Privileged" SecurityContextProperty where
  type PropertyType "Privileged" SecurityContextProperty = Value Prelude.Bool
  set newValue SecurityContextProperty {..}
    = SecurityContextProperty {privileged = Prelude.pure newValue, ..}
instance Property "ReadOnlyRootFilesystem" SecurityContextProperty where
  type PropertyType "ReadOnlyRootFilesystem" SecurityContextProperty = Value Prelude.Bool
  set newValue SecurityContextProperty {..}
    = SecurityContextProperty
        {readOnlyRootFilesystem = Prelude.pure newValue, ..}
instance Property "RunAsGroup" SecurityContextProperty where
  type PropertyType "RunAsGroup" SecurityContextProperty = Value Prelude.Integer
  set newValue SecurityContextProperty {..}
    = SecurityContextProperty {runAsGroup = Prelude.pure newValue, ..}
instance Property "RunAsNonRoot" SecurityContextProperty where
  type PropertyType "RunAsNonRoot" SecurityContextProperty = Value Prelude.Bool
  set newValue SecurityContextProperty {..}
    = SecurityContextProperty
        {runAsNonRoot = Prelude.pure newValue, ..}
instance Property "RunAsUser" SecurityContextProperty where
  type PropertyType "RunAsUser" SecurityContextProperty = Value Prelude.Integer
  set newValue SecurityContextProperty {..}
    = SecurityContextProperty {runAsUser = Prelude.pure newValue, ..}