module Stratosphere.EC2.Instance.SsmAssociationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SsmAssociationProperty :: Prelude.Type
instance ToResourceProperties SsmAssociationProperty
instance Prelude.Eq SsmAssociationProperty
instance Prelude.Show SsmAssociationProperty
instance JSON.ToJSON SsmAssociationProperty