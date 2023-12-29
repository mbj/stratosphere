module Stratosphere.OpsWorks.Stack.SourceProperty (
        SourceProperty(..), mkSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceProperty
  = SourceProperty {password :: (Prelude.Maybe (Value Prelude.Text)),
                    revision :: (Prelude.Maybe (Value Prelude.Text)),
                    sshKey :: (Prelude.Maybe (Value Prelude.Text)),
                    type' :: (Prelude.Maybe (Value Prelude.Text)),
                    url :: (Prelude.Maybe (Value Prelude.Text)),
                    username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceProperty :: SourceProperty
mkSourceProperty
  = SourceProperty
      {password = Prelude.Nothing, revision = Prelude.Nothing,
       sshKey = Prelude.Nothing, type' = Prelude.Nothing,
       url = Prelude.Nothing, username = Prelude.Nothing}
instance ToResourceProperties SourceProperty where
  toResourceProperties SourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Stack.Source",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Password" Prelude.<$> password,
                            (JSON..=) "Revision" Prelude.<$> revision,
                            (JSON..=) "SshKey" Prelude.<$> sshKey,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Url" Prelude.<$> url,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON SourceProperty where
  toJSON SourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Password" Prelude.<$> password,
               (JSON..=) "Revision" Prelude.<$> revision,
               (JSON..=) "SshKey" Prelude.<$> sshKey,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Url" Prelude.<$> url,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "Password" SourceProperty where
  type PropertyType "Password" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {password = Prelude.pure newValue, ..}
instance Property "Revision" SourceProperty where
  type PropertyType "Revision" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {revision = Prelude.pure newValue, ..}
instance Property "SshKey" SourceProperty where
  type PropertyType "SshKey" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {sshKey = Prelude.pure newValue, ..}
instance Property "Type" SourceProperty where
  type PropertyType "Type" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {type' = Prelude.pure newValue, ..}
instance Property "Url" SourceProperty where
  type PropertyType "Url" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {url = Prelude.pure newValue, ..}
instance Property "Username" SourceProperty where
  type PropertyType "Username" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {username = Prelude.pure newValue, ..}