module Stratosphere.Deadline.Queue.JobRunAsUserProperty (
        module Exports, JobRunAsUserProperty(..), mkJobRunAsUserProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Deadline.Queue.PosixUserProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Queue.WindowsUserProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobRunAsUserProperty
  = JobRunAsUserProperty {posix :: (Prelude.Maybe PosixUserProperty),
                          runAs :: (Value Prelude.Text),
                          windows :: (Prelude.Maybe WindowsUserProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobRunAsUserProperty ::
  Value Prelude.Text -> JobRunAsUserProperty
mkJobRunAsUserProperty runAs
  = JobRunAsUserProperty
      {runAs = runAs, posix = Prelude.Nothing, windows = Prelude.Nothing}
instance ToResourceProperties JobRunAsUserProperty where
  toResourceProperties JobRunAsUserProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Queue.JobRunAsUser",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RunAs" JSON..= runAs]
                           (Prelude.catMaybes
                              [(JSON..=) "Posix" Prelude.<$> posix,
                               (JSON..=) "Windows" Prelude.<$> windows]))}
instance JSON.ToJSON JobRunAsUserProperty where
  toJSON JobRunAsUserProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RunAs" JSON..= runAs]
              (Prelude.catMaybes
                 [(JSON..=) "Posix" Prelude.<$> posix,
                  (JSON..=) "Windows" Prelude.<$> windows])))
instance Property "Posix" JobRunAsUserProperty where
  type PropertyType "Posix" JobRunAsUserProperty = PosixUserProperty
  set newValue JobRunAsUserProperty {..}
    = JobRunAsUserProperty {posix = Prelude.pure newValue, ..}
instance Property "RunAs" JobRunAsUserProperty where
  type PropertyType "RunAs" JobRunAsUserProperty = Value Prelude.Text
  set newValue JobRunAsUserProperty {..}
    = JobRunAsUserProperty {runAs = newValue, ..}
instance Property "Windows" JobRunAsUserProperty where
  type PropertyType "Windows" JobRunAsUserProperty = WindowsUserProperty
  set newValue JobRunAsUserProperty {..}
    = JobRunAsUserProperty {windows = Prelude.pure newValue, ..}