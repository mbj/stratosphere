module Stratosphere.RedshiftServerless.Workgroup.WorkgroupProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WorkgroupProperty :: Prelude.Type
instance ToResourceProperties WorkgroupProperty
instance JSON.ToJSON WorkgroupProperty