module Stratosphere.Lex.Bot.OpensearchConfigurationProperty (
        module Exports, OpensearchConfigurationProperty(..),
        mkOpensearchConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.ExactResponseFieldsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpensearchConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-opensearchconfiguration.html>
    OpensearchConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-opensearchconfiguration.html#cfn-lex-bot-opensearchconfiguration-domainendpoint>
                                     domainEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-opensearchconfiguration.html#cfn-lex-bot-opensearchconfiguration-exactresponse>
                                     exactResponse :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-opensearchconfiguration.html#cfn-lex-bot-opensearchconfiguration-exactresponsefields>
                                     exactResponseFields :: (Prelude.Maybe ExactResponseFieldsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-opensearchconfiguration.html#cfn-lex-bot-opensearchconfiguration-includefields>
                                     includeFields :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-opensearchconfiguration.html#cfn-lex-bot-opensearchconfiguration-indexname>
                                     indexName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpensearchConfigurationProperty ::
  OpensearchConfigurationProperty
mkOpensearchConfigurationProperty
  = OpensearchConfigurationProperty
      {haddock_workaround_ = (), domainEndpoint = Prelude.Nothing,
       exactResponse = Prelude.Nothing,
       exactResponseFields = Prelude.Nothing,
       includeFields = Prelude.Nothing, indexName = Prelude.Nothing}
instance ToResourceProperties OpensearchConfigurationProperty where
  toResourceProperties OpensearchConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.OpensearchConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainEndpoint" Prelude.<$> domainEndpoint,
                            (JSON..=) "ExactResponse" Prelude.<$> exactResponse,
                            (JSON..=) "ExactResponseFields" Prelude.<$> exactResponseFields,
                            (JSON..=) "IncludeFields" Prelude.<$> includeFields,
                            (JSON..=) "IndexName" Prelude.<$> indexName])}
instance JSON.ToJSON OpensearchConfigurationProperty where
  toJSON OpensearchConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DomainEndpoint" Prelude.<$> domainEndpoint,
               (JSON..=) "ExactResponse" Prelude.<$> exactResponse,
               (JSON..=) "ExactResponseFields" Prelude.<$> exactResponseFields,
               (JSON..=) "IncludeFields" Prelude.<$> includeFields,
               (JSON..=) "IndexName" Prelude.<$> indexName]))
instance Property "DomainEndpoint" OpensearchConfigurationProperty where
  type PropertyType "DomainEndpoint" OpensearchConfigurationProperty = Value Prelude.Text
  set newValue OpensearchConfigurationProperty {..}
    = OpensearchConfigurationProperty
        {domainEndpoint = Prelude.pure newValue, ..}
instance Property "ExactResponse" OpensearchConfigurationProperty where
  type PropertyType "ExactResponse" OpensearchConfigurationProperty = Value Prelude.Bool
  set newValue OpensearchConfigurationProperty {..}
    = OpensearchConfigurationProperty
        {exactResponse = Prelude.pure newValue, ..}
instance Property "ExactResponseFields" OpensearchConfigurationProperty where
  type PropertyType "ExactResponseFields" OpensearchConfigurationProperty = ExactResponseFieldsProperty
  set newValue OpensearchConfigurationProperty {..}
    = OpensearchConfigurationProperty
        {exactResponseFields = Prelude.pure newValue, ..}
instance Property "IncludeFields" OpensearchConfigurationProperty where
  type PropertyType "IncludeFields" OpensearchConfigurationProperty = ValueList Prelude.Text
  set newValue OpensearchConfigurationProperty {..}
    = OpensearchConfigurationProperty
        {includeFields = Prelude.pure newValue, ..}
instance Property "IndexName" OpensearchConfigurationProperty where
  type PropertyType "IndexName" OpensearchConfigurationProperty = Value Prelude.Text
  set newValue OpensearchConfigurationProperty {..}
    = OpensearchConfigurationProperty
        {indexName = Prelude.pure newValue, ..}