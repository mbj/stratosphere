module Stratosphere.Lex.Bot.QnAKendraConfigurationProperty (
        QnAKendraConfigurationProperty(..),
        mkQnAKendraConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QnAKendraConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qnakendraconfiguration.html>
    QnAKendraConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qnakendraconfiguration.html#cfn-lex-bot-qnakendraconfiguration-exactresponse>
                                    exactResponse :: (Value Prelude.Bool),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qnakendraconfiguration.html#cfn-lex-bot-qnakendraconfiguration-kendraindex>
                                    kendraIndex :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qnakendraconfiguration.html#cfn-lex-bot-qnakendraconfiguration-queryfilterstring>
                                    queryFilterString :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qnakendraconfiguration.html#cfn-lex-bot-qnakendraconfiguration-queryfilterstringenabled>
                                    queryFilterStringEnabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQnAKendraConfigurationProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text
     -> Value Prelude.Bool -> QnAKendraConfigurationProperty
mkQnAKendraConfigurationProperty
  exactResponse
  kendraIndex
  queryFilterStringEnabled
  = QnAKendraConfigurationProperty
      {haddock_workaround_ = (), exactResponse = exactResponse,
       kendraIndex = kendraIndex,
       queryFilterStringEnabled = queryFilterStringEnabled,
       queryFilterString = Prelude.Nothing}
instance ToResourceProperties QnAKendraConfigurationProperty where
  toResourceProperties QnAKendraConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.QnAKendraConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExactResponse" JSON..= exactResponse,
                            "KendraIndex" JSON..= kendraIndex,
                            "QueryFilterStringEnabled" JSON..= queryFilterStringEnabled]
                           (Prelude.catMaybes
                              [(JSON..=) "QueryFilterString" Prelude.<$> queryFilterString]))}
instance JSON.ToJSON QnAKendraConfigurationProperty where
  toJSON QnAKendraConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExactResponse" JSON..= exactResponse,
               "KendraIndex" JSON..= kendraIndex,
               "QueryFilterStringEnabled" JSON..= queryFilterStringEnabled]
              (Prelude.catMaybes
                 [(JSON..=) "QueryFilterString" Prelude.<$> queryFilterString])))
instance Property "ExactResponse" QnAKendraConfigurationProperty where
  type PropertyType "ExactResponse" QnAKendraConfigurationProperty = Value Prelude.Bool
  set newValue QnAKendraConfigurationProperty {..}
    = QnAKendraConfigurationProperty {exactResponse = newValue, ..}
instance Property "KendraIndex" QnAKendraConfigurationProperty where
  type PropertyType "KendraIndex" QnAKendraConfigurationProperty = Value Prelude.Text
  set newValue QnAKendraConfigurationProperty {..}
    = QnAKendraConfigurationProperty {kendraIndex = newValue, ..}
instance Property "QueryFilterString" QnAKendraConfigurationProperty where
  type PropertyType "QueryFilterString" QnAKendraConfigurationProperty = Value Prelude.Text
  set newValue QnAKendraConfigurationProperty {..}
    = QnAKendraConfigurationProperty
        {queryFilterString = Prelude.pure newValue, ..}
instance Property "QueryFilterStringEnabled" QnAKendraConfigurationProperty where
  type PropertyType "QueryFilterStringEnabled" QnAKendraConfigurationProperty = Value Prelude.Bool
  set newValue QnAKendraConfigurationProperty {..}
    = QnAKendraConfigurationProperty
        {queryFilterStringEnabled = newValue, ..}