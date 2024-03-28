module Stratosphere.CodePipeline.Pipeline.PipelineTriggerDeclarationProperty (
        module Exports, PipelineTriggerDeclarationProperty(..),
        mkPipelineTriggerDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.GitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipelineTriggerDeclarationProperty
  = PipelineTriggerDeclarationProperty {gitConfiguration :: (Prelude.Maybe GitConfigurationProperty),
                                        providerType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipelineTriggerDeclarationProperty ::
  Value Prelude.Text -> PipelineTriggerDeclarationProperty
mkPipelineTriggerDeclarationProperty providerType
  = PipelineTriggerDeclarationProperty
      {providerType = providerType, gitConfiguration = Prelude.Nothing}
instance ToResourceProperties PipelineTriggerDeclarationProperty where
  toResourceProperties PipelineTriggerDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.PipelineTriggerDeclaration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProviderType" JSON..= providerType]
                           (Prelude.catMaybes
                              [(JSON..=) "GitConfiguration" Prelude.<$> gitConfiguration]))}
instance JSON.ToJSON PipelineTriggerDeclarationProperty where
  toJSON PipelineTriggerDeclarationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProviderType" JSON..= providerType]
              (Prelude.catMaybes
                 [(JSON..=) "GitConfiguration" Prelude.<$> gitConfiguration])))
instance Property "GitConfiguration" PipelineTriggerDeclarationProperty where
  type PropertyType "GitConfiguration" PipelineTriggerDeclarationProperty = GitConfigurationProperty
  set newValue PipelineTriggerDeclarationProperty {..}
    = PipelineTriggerDeclarationProperty
        {gitConfiguration = Prelude.pure newValue, ..}
instance Property "ProviderType" PipelineTriggerDeclarationProperty where
  type PropertyType "ProviderType" PipelineTriggerDeclarationProperty = Value Prelude.Text
  set newValue PipelineTriggerDeclarationProperty {..}
    = PipelineTriggerDeclarationProperty {providerType = newValue, ..}