module Stratosphere.EFS.AccessPoint.PosixUserProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PosixUserProperty :: Prelude.Type
instance ToResourceProperties PosixUserProperty
instance JSON.ToJSON PosixUserProperty