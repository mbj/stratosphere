module Stratosphere.ResourceExplorer2.DefaultViewAssociation (
        DefaultViewAssociation(..), mkDefaultViewAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultViewAssociation
  = DefaultViewAssociation {viewArn :: (Value Prelude.Text)}
mkDefaultViewAssociation ::
  Value Prelude.Text -> DefaultViewAssociation
mkDefaultViewAssociation viewArn
  = DefaultViewAssociation {viewArn = viewArn}
instance ToResourceProperties DefaultViewAssociation where
  toResourceProperties DefaultViewAssociation {..}
    = ResourceProperties
        {awsType = "AWS::ResourceExplorer2::DefaultViewAssociation",
         properties = ["ViewArn" JSON..= viewArn]}
instance JSON.ToJSON DefaultViewAssociation where
  toJSON DefaultViewAssociation {..}
    = JSON.object ["ViewArn" JSON..= viewArn]
instance Property "ViewArn" DefaultViewAssociation where
  type PropertyType "ViewArn" DefaultViewAssociation = Value Prelude.Text
  set newValue DefaultViewAssociation {}
    = DefaultViewAssociation {viewArn = newValue, ..}