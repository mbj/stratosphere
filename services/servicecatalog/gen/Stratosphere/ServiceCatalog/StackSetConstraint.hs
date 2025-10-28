module Stratosphere.ServiceCatalog.StackSetConstraint (
        StackSetConstraint(..), mkStackSetConstraint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackSetConstraint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html>
    StackSetConstraint {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-acceptlanguage>
                        acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-accountlist>
                        accountList :: (ValueList Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-adminrole>
                        adminRole :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-description>
                        description :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-executionrole>
                        executionRole :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-portfolioid>
                        portfolioId :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-productid>
                        productId :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-regionlist>
                        regionList :: (ValueList Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-stackinstancecontrol>
                        stackInstanceControl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStackSetConstraint ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text
                 -> ValueList Prelude.Text
                    -> Value Prelude.Text -> StackSetConstraint
mkStackSetConstraint
  accountList
  adminRole
  description
  executionRole
  portfolioId
  productId
  regionList
  stackInstanceControl
  = StackSetConstraint
      {haddock_workaround_ = (), accountList = accountList,
       adminRole = adminRole, description = description,
       executionRole = executionRole, portfolioId = portfolioId,
       productId = productId, regionList = regionList,
       stackInstanceControl = stackInstanceControl,
       acceptLanguage = Prelude.Nothing}
instance ToResourceProperties StackSetConstraint where
  toResourceProperties StackSetConstraint {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::StackSetConstraint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountList" JSON..= accountList, "AdminRole" JSON..= adminRole,
                            "Description" JSON..= description,
                            "ExecutionRole" JSON..= executionRole,
                            "PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId,
                            "RegionList" JSON..= regionList,
                            "StackInstanceControl" JSON..= stackInstanceControl]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage]))}
instance JSON.ToJSON StackSetConstraint where
  toJSON StackSetConstraint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountList" JSON..= accountList, "AdminRole" JSON..= adminRole,
               "Description" JSON..= description,
               "ExecutionRole" JSON..= executionRole,
               "PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId,
               "RegionList" JSON..= regionList,
               "StackInstanceControl" JSON..= stackInstanceControl]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage])))
instance Property "AcceptLanguage" StackSetConstraint where
  type PropertyType "AcceptLanguage" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {acceptLanguage = Prelude.pure newValue, ..}
instance Property "AccountList" StackSetConstraint where
  type PropertyType "AccountList" StackSetConstraint = ValueList Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {accountList = newValue, ..}
instance Property "AdminRole" StackSetConstraint where
  type PropertyType "AdminRole" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {adminRole = newValue, ..}
instance Property "Description" StackSetConstraint where
  type PropertyType "Description" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {description = newValue, ..}
instance Property "ExecutionRole" StackSetConstraint where
  type PropertyType "ExecutionRole" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {executionRole = newValue, ..}
instance Property "PortfolioId" StackSetConstraint where
  type PropertyType "PortfolioId" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {portfolioId = newValue, ..}
instance Property "ProductId" StackSetConstraint where
  type PropertyType "ProductId" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {productId = newValue, ..}
instance Property "RegionList" StackSetConstraint where
  type PropertyType "RegionList" StackSetConstraint = ValueList Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {regionList = newValue, ..}
instance Property "StackInstanceControl" StackSetConstraint where
  type PropertyType "StackInstanceControl" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {stackInstanceControl = newValue, ..}