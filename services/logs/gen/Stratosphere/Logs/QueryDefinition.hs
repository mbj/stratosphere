module Stratosphere.Logs.QueryDefinition (
        QueryDefinition(..), mkQueryDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryDefinition
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-querydefinition.html>
    QueryDefinition {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-querydefinition.html#cfn-logs-querydefinition-loggroupnames>
                     logGroupNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-querydefinition.html#cfn-logs-querydefinition-name>
                     name :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-querydefinition.html#cfn-logs-querydefinition-querystring>
                     queryString :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryDefinition ::
  Value Prelude.Text -> Value Prelude.Text -> QueryDefinition
mkQueryDefinition name queryString
  = QueryDefinition
      {haddock_workaround_ = (), name = name, queryString = queryString,
       logGroupNames = Prelude.Nothing}
instance ToResourceProperties QueryDefinition where
  toResourceProperties QueryDefinition {..}
    = ResourceProperties
        {awsType = "AWS::Logs::QueryDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "QueryString" JSON..= queryString]
                           (Prelude.catMaybes
                              [(JSON..=) "LogGroupNames" Prelude.<$> logGroupNames]))}
instance JSON.ToJSON QueryDefinition where
  toJSON QueryDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "QueryString" JSON..= queryString]
              (Prelude.catMaybes
                 [(JSON..=) "LogGroupNames" Prelude.<$> logGroupNames])))
instance Property "LogGroupNames" QueryDefinition where
  type PropertyType "LogGroupNames" QueryDefinition = ValueList Prelude.Text
  set newValue QueryDefinition {..}
    = QueryDefinition {logGroupNames = Prelude.pure newValue, ..}
instance Property "Name" QueryDefinition where
  type PropertyType "Name" QueryDefinition = Value Prelude.Text
  set newValue QueryDefinition {..}
    = QueryDefinition {name = newValue, ..}
instance Property "QueryString" QueryDefinition where
  type PropertyType "QueryString" QueryDefinition = Value Prelude.Text
  set newValue QueryDefinition {..}
    = QueryDefinition {queryString = newValue, ..}