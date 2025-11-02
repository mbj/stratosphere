module Stratosphere.Bedrock.DataSource.FixedSizeChunkingConfigurationProperty (
        FixedSizeChunkingConfigurationProperty(..),
        mkFixedSizeChunkingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FixedSizeChunkingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-fixedsizechunkingconfiguration.html>
    FixedSizeChunkingConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-fixedsizechunkingconfiguration.html#cfn-bedrock-datasource-fixedsizechunkingconfiguration-maxtokens>
                                            maxTokens :: (Value Prelude.Integer),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-fixedsizechunkingconfiguration.html#cfn-bedrock-datasource-fixedsizechunkingconfiguration-overlappercentage>
                                            overlapPercentage :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFixedSizeChunkingConfigurationProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> FixedSizeChunkingConfigurationProperty
mkFixedSizeChunkingConfigurationProperty
  maxTokens
  overlapPercentage
  = FixedSizeChunkingConfigurationProperty
      {haddock_workaround_ = (), maxTokens = maxTokens,
       overlapPercentage = overlapPercentage}
instance ToResourceProperties FixedSizeChunkingConfigurationProperty where
  toResourceProperties FixedSizeChunkingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.FixedSizeChunkingConfiguration",
         supportsTags = Prelude.False,
         properties = ["MaxTokens" JSON..= maxTokens,
                       "OverlapPercentage" JSON..= overlapPercentage]}
instance JSON.ToJSON FixedSizeChunkingConfigurationProperty where
  toJSON FixedSizeChunkingConfigurationProperty {..}
    = JSON.object
        ["MaxTokens" JSON..= maxTokens,
         "OverlapPercentage" JSON..= overlapPercentage]
instance Property "MaxTokens" FixedSizeChunkingConfigurationProperty where
  type PropertyType "MaxTokens" FixedSizeChunkingConfigurationProperty = Value Prelude.Integer
  set newValue FixedSizeChunkingConfigurationProperty {..}
    = FixedSizeChunkingConfigurationProperty {maxTokens = newValue, ..}
instance Property "OverlapPercentage" FixedSizeChunkingConfigurationProperty where
  type PropertyType "OverlapPercentage" FixedSizeChunkingConfigurationProperty = Value Prelude.Integer
  set newValue FixedSizeChunkingConfigurationProperty {..}
    = FixedSizeChunkingConfigurationProperty
        {overlapPercentage = newValue, ..}