module Stratosphere.CodePipeline.Pipeline.BlockerDeclarationProperty (
        BlockerDeclarationProperty(..), mkBlockerDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlockerDeclarationProperty
  = BlockerDeclarationProperty {name :: (Value Prelude.Text),
                                type' :: (Value Prelude.Text)}
mkBlockerDeclarationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> BlockerDeclarationProperty
mkBlockerDeclarationProperty name type'
  = BlockerDeclarationProperty {name = name, type' = type'}
instance ToResourceProperties BlockerDeclarationProperty where
  toResourceProperties BlockerDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.BlockerDeclaration",
         properties = ["Name" JSON..= name, "Type" JSON..= type']}
instance JSON.ToJSON BlockerDeclarationProperty where
  toJSON BlockerDeclarationProperty {..}
    = JSON.object ["Name" JSON..= name, "Type" JSON..= type']
instance Property "Name" BlockerDeclarationProperty where
  type PropertyType "Name" BlockerDeclarationProperty = Value Prelude.Text
  set newValue BlockerDeclarationProperty {..}
    = BlockerDeclarationProperty {name = newValue, ..}
instance Property "Type" BlockerDeclarationProperty where
  type PropertyType "Type" BlockerDeclarationProperty = Value Prelude.Text
  set newValue BlockerDeclarationProperty {..}
    = BlockerDeclarationProperty {type' = newValue, ..}