module Stratosphere.WAF.XssMatchSet (
        module Exports, XssMatchSet(..), mkXssMatchSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAF.XssMatchSet.XssMatchTupleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data XssMatchSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-xssmatchset.html>
    XssMatchSet {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-xssmatchset.html#cfn-waf-xssmatchset-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-xssmatchset.html#cfn-waf-xssmatchset-xssmatchtuples>
                 xssMatchTuples :: [XssMatchTupleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkXssMatchSet ::
  Value Prelude.Text -> [XssMatchTupleProperty] -> XssMatchSet
mkXssMatchSet name xssMatchTuples
  = XssMatchSet
      {haddock_workaround_ = (), name = name,
       xssMatchTuples = xssMatchTuples}
instance ToResourceProperties XssMatchSet where
  toResourceProperties XssMatchSet {..}
    = ResourceProperties
        {awsType = "AWS::WAF::XssMatchSet", supportsTags = Prelude.False,
         properties = ["Name" JSON..= name,
                       "XssMatchTuples" JSON..= xssMatchTuples]}
instance JSON.ToJSON XssMatchSet where
  toJSON XssMatchSet {..}
    = JSON.object
        ["Name" JSON..= name, "XssMatchTuples" JSON..= xssMatchTuples]
instance Property "Name" XssMatchSet where
  type PropertyType "Name" XssMatchSet = Value Prelude.Text
  set newValue XssMatchSet {..} = XssMatchSet {name = newValue, ..}
instance Property "XssMatchTuples" XssMatchSet where
  type PropertyType "XssMatchTuples" XssMatchSet = [XssMatchTupleProperty]
  set newValue XssMatchSet {..}
    = XssMatchSet {xssMatchTuples = newValue, ..}