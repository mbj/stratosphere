module Stratosphere.Lex.Bot.KendraConfigurationProperty (
        KendraConfigurationProperty(..), mkKendraConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KendraConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-kendraconfiguration.html>
    KendraConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-kendraconfiguration.html#cfn-lex-bot-kendraconfiguration-kendraindex>
                                 kendraIndex :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-kendraconfiguration.html#cfn-lex-bot-kendraconfiguration-queryfilterstring>
                                 queryFilterString :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-kendraconfiguration.html#cfn-lex-bot-kendraconfiguration-queryfilterstringenabled>
                                 queryFilterStringEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKendraConfigurationProperty ::
  Value Prelude.Text -> KendraConfigurationProperty
mkKendraConfigurationProperty kendraIndex
  = KendraConfigurationProperty
      {haddock_workaround_ = (), kendraIndex = kendraIndex,
       queryFilterString = Prelude.Nothing,
       queryFilterStringEnabled = Prelude.Nothing}
instance ToResourceProperties KendraConfigurationProperty where
  toResourceProperties KendraConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.KendraConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KendraIndex" JSON..= kendraIndex]
                           (Prelude.catMaybes
                              [(JSON..=) "QueryFilterString" Prelude.<$> queryFilterString,
                               (JSON..=) "QueryFilterStringEnabled"
                                 Prelude.<$> queryFilterStringEnabled]))}
instance JSON.ToJSON KendraConfigurationProperty where
  toJSON KendraConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KendraIndex" JSON..= kendraIndex]
              (Prelude.catMaybes
                 [(JSON..=) "QueryFilterString" Prelude.<$> queryFilterString,
                  (JSON..=) "QueryFilterStringEnabled"
                    Prelude.<$> queryFilterStringEnabled])))
instance Property "KendraIndex" KendraConfigurationProperty where
  type PropertyType "KendraIndex" KendraConfigurationProperty = Value Prelude.Text
  set newValue KendraConfigurationProperty {..}
    = KendraConfigurationProperty {kendraIndex = newValue, ..}
instance Property "QueryFilterString" KendraConfigurationProperty where
  type PropertyType "QueryFilterString" KendraConfigurationProperty = Value Prelude.Text
  set newValue KendraConfigurationProperty {..}
    = KendraConfigurationProperty
        {queryFilterString = Prelude.pure newValue, ..}
instance Property "QueryFilterStringEnabled" KendraConfigurationProperty where
  type PropertyType "QueryFilterStringEnabled" KendraConfigurationProperty = Value Prelude.Bool
  set newValue KendraConfigurationProperty {..}
    = KendraConfigurationProperty
        {queryFilterStringEnabled = Prelude.pure newValue, ..}